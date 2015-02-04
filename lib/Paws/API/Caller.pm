package Paws::API::Caller {
  use Moose::Role;
  use Module::Runtime qw//;
  use Carp;

  has argv => (is => 'ro');

  has caller => (is => 'ro', default => sub {
    require Paws::Net::Caller;
    return Paws::Net::Caller->new(caller_for => $_[0])
  });

  has credentials => (
    is => 'ro',
    isa => 'Paws::Net::Credentials',
    lazy => 1,
    default => sub { Paws::Net::CredentialsProviderChain->new },
    handles => [ 'access_key', 'secret_key', 'session_token' ],
  );

  # converts the params the user passed to the call into objects that represent the call
  sub new_with_coercions {
    my ($self, $class, %params) = @_;

    Module::Runtime::require_module($class);
    my %p;
    foreach my $att (keys %params){
      my $att_meta = $class->meta->find_attribute_by_name($att);
      croak "$class doesn't have an $att" if (not defined $att_meta);
      my $type = $att_meta->type_constraint;

      if ($type eq 'Bool') {
        $p{ $att } = ($params{ $att } == 1)?1:0;
      } elsif ($type eq 'Str' or $type eq 'Num' or $type eq 'Int') {
        $p{ $att } = $params{ $att };
      } elsif ($type =~ m/^ArrayRef\[(.*?)\]$/){
        my $subtype = "$1";
        if ($subtype eq 'Str' or $subtype eq 'Num' or $subtype eq 'Int' or $subtype eq 'Bool') {
          $p{ $att } = $params{ $att };
        } else {
          $p{ $att } = [ map { $self->new_with_coercions("$subtype", %{ $_ }) } @{ $params{ $att } } ];
        }
      } elsif ($type->isa('Moose::Meta::TypeConstraint::Enum')){
        $p{ $att } = $params{ $att };
      } else {
        $p{ $att } = $self->new_with_coercions("$type", %{ $params{ $att } });
      }
    }
    return $class->new(%p);
  }

  sub to_hash {
    my ($self, $params) = @_;
    my $refHash;
    foreach my $att (grep { $_ !~ m/^_/ } $params->meta->get_attribute_list) {
      my $key = $att;
      if (defined $params->$att) {
        my $att_type = $params->meta->get_attribute($att)->type_constraint;
        if ($att_type eq 'Bool') {
          $refHash->{ $key } = ($params->$att)?1:0;
        } elsif ($self->_is_internal_type($att_type)) {
          $refHash->{ $key } = $params->$att;
        } elsif ($att_type =~ m/^ArrayRef\[(.*)\]/) {
          if ($self->_is_internal_type("$1")){
            $refHash->{ $key } = $params->$att;
          } else {
            $refHash->{ $key } = [ map { $self->to_hash($_) } @{ $params->$att } ];
          }
        } elsif ($att_type->isa('Moose::Meta::TypeConstraint::Enum')) {
          $refHash->{ $key } = $params->$att;
        } else {
          $refHash->{ $key } = $self->to_hash($params->$att);
        }
      }
    }
    return $refHash;
  }
}
1;
