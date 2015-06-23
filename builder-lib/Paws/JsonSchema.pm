package Paws::JsonSchema {
  use MooseX::DataModel;

  key version => (isa => enum(['2.0']), required => 1);
  key metadata => (isa => 'Paws::JsonSchema::Metadata', required => 1);
  key documentation => (isa => 'Str', required => 1);

  object operations => (
    isa => 'Paws::JsonSchema::Operation',
    traits => [ 'Hash' ],
    handles => { operation => 'get' },
  );
  object shapes => (isa => 'Paws::JsonSchema::Shape');
}

package Paws::JsonSchema::Operation {
  use MooseX::DataModel;

  key name => (isa => 'Str');
  key http => (isa => 'Paws::JsonSchema::HttpInfo');
  key input => (isa => 'Paws::JsonSchema::ShapePointer');
  key output => (isa => 'Paws::JsonSchema::ShapePointer');
  key documentation => (isa => 'Str');

  has input_shapename => (is => 'ro', isa => 'Str', lazy => 1, default => sub { shift->input->shape });
  has output_shapename => (is => 'ro', isa => 'Str', lazy => 1, default => sub { shift->output->shape });

  #TODO: find the shape
  #has input_shape => (isa => 'Paws::JsonSchema::Shape', default => sub { });
  #has output_shape => (isa => 'Paws::JsonSchema::Shape', default => sub { });
}

package Paws::JsonSchema::ShapePointer {
  use MooseX::DataModel;

  key shape => (isa => 'Str');
}

package Paws::JsonSchema::HttpInfo {
  use MooseX::DataModel;
  
  key method => (isa => 'Str');
  key requestUri => (isa => 'Str');
}

package Paws::JsonSchema::Shape {
  use v5.14;
  use MooseX::DataModel;
  use namespace::autoclean;

  key type => (isa => 'Str');
  array required => (isa => 'Str');
  key shape => (isa => 'Str');
  key documentation => (isa => 'Str');
  key locationName => (isa => 'Str');
  key member => (isa => 'Paws::JsonSchema::Shape');
  object members => (isa => 'Paws::JsonSchema::Shape', 
                     traits => ['Hash'], 
                     handles => { member_list => 'keys', member_get => 'get' }
  );

  has optional => (is => 'ro', isa => 'ArrayRef', lazy => 1, default => sub {
    my ($self) = @_;

    my $req = $self->required || [];
    my %required = map { ($_ => 1) } @$req;
    return [ grep { not defined $required{ $_ } } keys %{ $self->members } ];
  });

  sub is_required {
    my ($self, $attribute) = @_;
    return 0 if (not defined $self->required);
    return (1 == (grep { $_ eq $attribute } @{ $self->required }));
  }

  has perl_class => (
    is => 'ro',
    isa => 'Str',
    required => 1,
    lazy => 1,
    default => sub {
      my ($self) = @_;
      #TODO: select type!
      my $type = $self->type;
      die "Shape doesn't have a type entry"  if (not defined $type);

      for ($type) {
        do { my $inner_class = $self->member->perl_class;
          return "ArrayRef[$inner_class]" 
        } when /^list$/;
        return 'Str' when /^timestamp$/;
        return 'Int' when /^long$/;
        return 'Num' when /^double$/;
        return 'Num' when /^float$/;
        return 'Bool' when /^Boolean$/;
        return 'Int' when /^integer$/;
        return 'Str' when /^string$/;
        return 'Str' when /^blob$/;
        return $self->member->perl_class when /^map$/;
        return $self->member->perl_class when /^structure$/;
        default { die "Cannot map $type to a perl_class" }
      }
    }
  );
}

package Paws::JsonSchema::Metadata {
  use MooseX::DataModel;

  key apiVersion => (isa => 'Str');
  key endpointPrefix => (isa => 'Str');
  key serviceAbbreviation => (isa => 'Str');
  key serviceFullName => (isa => 'Str');
  key signatureVersion => (isa => 'Str');
  key xmlNameSpace => (isa => 'Str');
  key protocol => (isa => 'Str', required => 1);
}

