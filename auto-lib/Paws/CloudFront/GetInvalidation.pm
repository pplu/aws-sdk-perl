
package Paws::CloudFront::GetInvalidation;
  use Moose;
  has DistributionId => (is => 'ro', isa => 'Str', uri_name => 'DistributionId', traits => ['ParamInURI'], required => 1);
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInvalidation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-03-25/distribution/{DistributionId}/invalidation/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::GetInvalidationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetInvalidation - Arguments for method GetInvalidation on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInvalidation2017_03_25 on the 
Amazon CloudFront service. Use the attributes of this class
as arguments to method GetInvalidation2017_03_25.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInvalidation2017_03_25.

As an example:

  $service_obj->GetInvalidation2017_03_25(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistributionId => Str

The distribution's ID.



=head2 B<REQUIRED> Id => Str

The identifier for the invalidation request, for example,
C<IDFDVBD632BHDS5>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInvalidation2017_03_25 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

