package Paws::JsonSchema {
  use MooseX::DataModel;

  has signature_role => (is => 'ro', lazy => 1, 
    default => sub {
      my $sig = $_[0]->metadata->signatureVersion;
      substr($sig,0,1) = uc substr($sig,0,1);
      return "Paws::Net::${sig}Signature"
    }
  );

  has parameter_role => (
    is => 'ro',
    lazy => 1,
    default => sub {
      my $type = $_[0]->metadata->protocol;
      substr($type,0,1) = uc substr($type,0,1);
      return "Paws::Net::${type}Caller"
    },
  );


  key version => (isa => enum(['2.0']), required => 1);
  key metadata => (isa => 'Paws::JsonSchema::Metadata', required => 1);
  key documentation => (isa => 'Str', required => 1);

  object _operations => (
    location => 'operations',
    isa => 'Paws::JsonSchema::Operation',
    traits => [ 'Hash' ],
    handles => { 
      operation => 'get',
      operations => 'keys',
    },
  );
  object _shapes => (
    location => 'shapes',
    isa => 'Paws::JsonSchema::Shape',
    traits => [ 'Hash' ],
    handles => {
      shape => 'get',
      shapes => 'keys', 
    },
  );

  has _input_shapes => (
    is => 'ro',
    isa => 'HashRef',
    lazy => 1,
    default => sub {
      my $self = shift;
      my $ret = {};
      foreach my $op ($self->operations) {
        my $operation = $self->operation($op);
        my $sh_name = $operation->{ input }->{ shape };
        $ret->{ $sh_name } = $self->shape($sh_name) if (defined $sh_name);
      }
      return $ret;
    },
    traits => [ 'Hash' ],
    handles => {
      input_shape => 'get',
      input_shapes => 'keys',
      is_input_shape => 'exists',
    }
  );

  has _output_shapes => (
    is => 'ro',
    isa => 'HashRef',
    lazy => 1,
    default => sub {
      my $self = shift;
      my $ret = {};
      foreach my $op ($self->operations) {
        my $operation = $self->operation($op);
        my $sh_name = $operation->{ output }->{ shape };
        $ret->{ $sh_name } = $self->shape($sh_name) if (defined $sh_name);
      }
      return $ret;
    },
    traits => [ 'Hash' ],
    handles => {
      output_shape => 'get',
      output_shapes => 'keys',
      is_output_shape => 'exists',
    }
  );

  has _exception_shapes => (
    is => 'ro',
    isa => 'HashRef',
    lazy => 1,
    default => sub {
      my $self = shift;
      my $ret = {};
      foreach my $shape_name ($self->shapes) {
        my $shape = $self->shape($shape_name);
        $ret->{ $shape_name } = $shape if (defined $shape->{ exception });
      }
      return $ret;
    },
    traits => [ 'Hash' ],
    handles => {
      exception_shape => 'get',
      exception_shapes => 'keys',
      is_exception_shape => 'exists',
    }
  );

  has _inner_shapes => (
    is => 'ro',
    lazy => 1,
    isa => 'HashRef',
    default => sub {
      my $self = shift;
      my $ret = {};
      foreach my $shape_name ($self->shapes) {
        my $shape = $self->shape($shape_name);
        $ret->{ $shape_name } = $shape if (( $shape->{type} eq 'structure' or $shape->{type} eq 'map')
                                           and not $self->is_exception_shape($shape_name)
                                           and not $self->is_output_shape($shape_name)
                                           and not $self->is_input_shape($shape_name)
                                          );
      }
      return $ret;
    },
    traits => [ 'Hash' ],
    handles => {
      inner_shape => 'get',
      inner_shapes => 'keys',
      is_inner_shape => 'exists',
    }
  );


}

package Paws::JsonSchema::Operation {
  use MooseX::DataModel;

  #TODO: implement sending the _parent
  has _parent => (
    is => 'ro',
    isa => 'Paws::JsonShema',
    weak_ref => 1,
  );

  key name => (isa => 'Str');
  key http => (isa => 'Paws::JsonSchema::HttpInfo');
  key input => (isa => 'Paws::JsonSchema::ShapePointer');
  key output => (isa => 'Paws::JsonSchema::ShapePointer');
  key documentation => (isa => 'Str');

  has input_shapename => (is => 'ro', isa => 'Str', lazy => 1, 
    default => sub { 
      shift->input->shape
    }
  );
  has output_shapename => (is => 'ro', isa => 'Str|Undef', lazy => 1, 
    default => sub { 
      my $self = shift;
      return (defined $self->output) ? $self->output->shape : undef 
    }
  );

  has input_shape => (
    is => 'ro',
    isa => 'Paws::JsonSchema::Shape',
    lazy => 1,
    default => sub { 
      my $self = shift;
      $self->_parent->shape($self->input_shapename);
    }
  );
  has output_shape => (
    is => 'ro',
    isa => 'Paws::JsonSchema::Shape',
    lazy => 1,
    default => sub { 
      my $self = shift;
      $self->_parent->shape($self->input_shapename);
    }
  );
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

