
package Paws::Pricing::GetAttributeValues;
  use Moose;
  has AttributeName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceCode => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAttributeValues');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pricing::GetAttributeValuesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pricing::GetAttributeValues - Arguments for method GetAttributeValues on L<Paws::Pricing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAttributeValues on the
L<AWS Price List Service|Paws::Pricing> service. Use the attributes of this class
as arguments to method GetAttributeValues.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAttributeValues.

=head1 SYNOPSIS

    my $api.pricing = Paws->service('Pricing');
    my $GetAttributeValuesResponse = $api . pricing->GetAttributeValues(
      AttributeName => 'MyString',
      ServiceCode   => 'MyString',
      MaxResults    => 1,             # OPTIONAL
      NextToken     => 'MyString',    # OPTIONAL
    );

    # Results:
    my $AttributeValues = $GetAttributeValuesResponse->AttributeValues;
    my $NextToken       = $GetAttributeValuesResponse->NextToken;

    # Returns a L<Paws::Pricing::GetAttributeValuesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.pricing/GetAttributeValues>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeName => Str

The name of the attribute that you want to retrieve the values for,
such as C<volumeType>.



=head2 MaxResults => Int

The maximum number of results to return in response.



=head2 NextToken => Str

The pagination token that indicates the next set of results that you
want to retrieve.



=head2 B<REQUIRED> ServiceCode => Str

The service code for the service whose attributes you want to retrieve.
For example, if you want the retrieve an EC2 attribute, use
C<AmazonEC2>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAttributeValues in L<Paws::Pricing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

