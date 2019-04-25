
package Paws::Route53Domains::GetOperationDetail;
  use Moose;
  has OperationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOperationDetail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::GetOperationDetailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::GetOperationDetail - Arguments for method GetOperationDetail on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOperationDetail on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method GetOperationDetail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOperationDetail.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $GetOperationDetailResponse = $route53domains->GetOperationDetail(
      OperationId => 'MyOperationId',

    );

    # Results:
    my $DomainName    = $GetOperationDetailResponse->DomainName;
    my $Message       = $GetOperationDetailResponse->Message;
    my $OperationId   = $GetOperationDetailResponse->OperationId;
    my $Status        = $GetOperationDetailResponse->Status;
    my $SubmittedDate = $GetOperationDetailResponse->SubmittedDate;
    my $Type          = $GetOperationDetailResponse->Type;

    # Returns a L<Paws::Route53Domains::GetOperationDetailResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/GetOperationDetail>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OperationId => Str

The identifier for the operation for which you want to get the status.
Amazon Route 53 returned the identifier in the response to the original
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOperationDetail in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

