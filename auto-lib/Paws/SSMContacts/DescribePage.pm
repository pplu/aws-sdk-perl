
package Paws::SSMContacts::DescribePage;
  use Moose;
  has PageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::DescribePageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::DescribePage - Arguments for method DescribePage on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePage on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method DescribePage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePage.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $DescribePageResult = $ssm -contacts->DescribePage(
      PageId => 'MySsmContactsArn',

    );

    # Results:
    my $ContactArn    = $DescribePageResult->ContactArn;
    my $Content       = $DescribePageResult->Content;
    my $DeliveryTime  = $DescribePageResult->DeliveryTime;
    my $EngagementArn = $DescribePageResult->EngagementArn;
    my $IncidentId    = $DescribePageResult->IncidentId;
    my $PageArn       = $DescribePageResult->PageArn;
    my $PublicContent = $DescribePageResult->PublicContent;
    my $PublicSubject = $DescribePageResult->PublicSubject;
    my $ReadTime      = $DescribePageResult->ReadTime;
    my $Sender        = $DescribePageResult->Sender;
    my $SentTime      = $DescribePageResult->SentTime;
    my $Subject       = $DescribePageResult->Subject;

    # Returns a L<Paws::SSMContacts::DescribePageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/DescribePage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PageId => Str

The ID of the engagement to a contact channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePage in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

