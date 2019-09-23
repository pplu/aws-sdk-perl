package Paws::API::Base64Attribute;
  use Moo::Role;
#  Moose::Util::meta_attribute_alias('Base64Attribute');
  use Types::Standard qw/Str/;

  has method    => (is => 'rw', isa => Str, required => 1);
  has decode_as => (is => 'rw', isa => Str, required => 1);

  after 'install_accessors' => sub {
    my $self = shift;
    my $realclass = $self->associated_class();
    my $closure = $self->name;
    my $coderef;
    if ($self->decode_as eq 'Base64') {
      $coderef = sub {
        my ($orig, $self) = @_;
        require MIME::Base64;
        return MIME::Base64::decode($self->$orig());
      };
      $realclass->add_around_method_modifier( $self->method => $coderef );
    } else {
      die "Unrecognized Base64Attribute decode_as attribute";
    }

  };
1;
