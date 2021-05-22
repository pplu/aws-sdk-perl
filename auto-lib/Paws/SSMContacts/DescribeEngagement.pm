
package Paws::SSMContacts::DescribeEngagement;
  use Moose;
  has EngagementId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngagement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::DescribeEngagementResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::DescribeEngagement - Arguments for method DescribeEngagement on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEngagement on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method DescribeEngagement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEngagement.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $DescribeEngagementResult = $ssm -contacts->DescribeEngagement(
      EngagementId => 'MySsmContactsArn',

    );

    # Results:
    my $ContactArn    = $DescribeEngagementResult->ContactArn;
    my $Content       = $DescribeEngagementResult->Content;
    my $EngagementArn = $DescribeEngagementResult->EngagementArn;
    my $IncidentId    = $DescribeEngagementResult->IncidentId;
    my $PublicContent = $DescribeEngagementResult->PublicContent;
    my $PublicSubject = $DescribeEngagementResult->PublicSubject;
    my $Sender        = $DescribeEngagementResult->Sender;
    my $StartTime     = $DescribeEngagementResult->StartTime;
    my $StopTime      = $DescribeEngagementResult->StopTime;
    my $Subject       = $DescribeEngagementResult->Subject;

    # Returns a L<Paws::SSMContacts::DescribeEngagementResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/DescribeEngagement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EngagementId => Str

The Amazon Resource Name (ARN) of the engagement you want the details
of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEngagement in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

