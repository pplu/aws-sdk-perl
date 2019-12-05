
package Paws::Config::DeleteResourceConfig;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResourceConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::DeleteResourceConfig - Arguments for method DeleteResourceConfig on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResourceConfig on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method DeleteResourceConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResourceConfig.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    $config->DeleteResourceConfig(
      ResourceId   => 'MyResourceId',
      ResourceType => 'MyResourceTypeString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/DeleteResourceConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

Unique identifier of the resource.



=head2 B<REQUIRED> ResourceType => Str

The type of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResourceConfig in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

