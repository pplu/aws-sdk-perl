
package Paws::SNS::GetSMSAttributes;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'attributes' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSMSAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::GetSMSAttributesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetSMSAttributesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetSMSAttributes - Arguments for method GetSMSAttributes on L<Paws::SNS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSMSAttributes on the
L<Amazon Simple Notification Service|Paws::SNS> service. Use the attributes of this class
as arguments to method GetSMSAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSMSAttributes.

=head1 SYNOPSIS

    my $sns = Paws->service('SNS');
    my $GetSMSAttributesResponse = $sns->GetSMSAttributes(
      Attributes => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $Attributes = $GetSMSAttributesResponse->Attributes;

    # Returns a L<Paws::SNS::GetSMSAttributesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sns/GetSMSAttributes>

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[Str|Undef]

A list of the individual attribute names, such as C<MonthlySpendLimit>,
for which you want values.

For all attribute names, see SetSMSAttributes
(http://docs.aws.amazon.com/sns/latest/api/API_SetSMSAttributes.html).

If you don't use this parameter, Amazon SNS returns all SMS attributes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSMSAttributes in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

