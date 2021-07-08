
package Paws::Synthetics::DeleteCanary;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCanary');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/canary/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Synthetics::DeleteCanaryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::DeleteCanary - Arguments for method DeleteCanary on L<Paws::Synthetics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCanary on the
L<Synthetics|Paws::Synthetics> service. Use the attributes of this class
as arguments to method DeleteCanary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCanary.

=head1 SYNOPSIS

    my $synthetics = Paws->service('Synthetics');
    my $DeleteCanaryResponse = $synthetics->DeleteCanary(
      Name => 'MyCanaryName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics/DeleteCanary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the canary that you want to delete. To find the names of
your canaries, use DescribeCanaries
(https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCanary in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

