package Paws::FMS;
  use Moose;
  sub service { 'fms' }
  sub signing_name { 'fms' }
  sub version { '2018-01-01' }
  sub target_prefix { 'AWSFMS_20180101' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::AssociateAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNotificationChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DeleteNotificationChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DeletePolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::DisassociateAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAdminAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetAdminAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComplianceDetail {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetComplianceDetail', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNotificationChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetNotificationChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComplianceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListComplianceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPolicies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::ListPolicies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutNotificationChannel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::PutNotificationChannel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::FMS::PutPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateAdminAccount DeleteNotificationChannel DeletePolicy DisassociateAdminAccount GetAdminAccount GetComplianceDetail GetNotificationChannel GetPolicy ListComplianceStatus ListPolicies PutNotificationChannel PutPolicy / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS - Perl Interface to AWS Firewall Management Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('FMS');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Firewall Manager

This is the I<AWS Firewall Manager API Reference>. This guide is for
developers who need detailed information about the AWS Firewall Manager
API actions, data types, and errors. For detailed information about AWS
Firewall Manager features, see the AWS Firewall Manager Developer Guide
(http://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01>


=head1 METHODS

=head2 AssociateAdminAccount

=over

=item AdminAccount => Str


=back

Each argument is described in detail in: L<Paws::FMS::AssociateAdminAccount>

Returns: nothing

Sets the AWS Firewall Manager administrator account. AWS Firewall
Manager must be associated with a master account in AWS Organizations
or associated with a member account that has the appropriate
permissions. If the account ID that you submit is not an AWS
Organizations master account, AWS Firewall Manager will set the
appropriate permissions for the given member account.

The account that you associate with AWS Firewall Manager is called the
AWS Firewall manager administrator account.


=head2 DeleteNotificationChannel






Each argument is described in detail in: L<Paws::FMS::DeleteNotificationChannel>

Returns: nothing

Deletes an AWS Firewall Manager association with the IAM role and the
Amazon Simple Notification Service (SNS) topic that is used to record
AWS Firewall Manager SNS logs.


=head2 DeletePolicy

=over

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::FMS::DeletePolicy>

Returns: nothing

Permanently deletes an AWS Firewall Manager policy.


=head2 DisassociateAdminAccount






Each argument is described in detail in: L<Paws::FMS::DisassociateAdminAccount>

Returns: nothing

Disassociates the account that has been set as the AWS Firewall Manager
administrator account. You will need to submit an
C<AssociateAdminAccount> request to set a new account as the AWS
Firewall administrator.


=head2 GetAdminAccount






Each argument is described in detail in: L<Paws::FMS::GetAdminAccount>

Returns: a L<Paws::FMS::GetAdminAccountResponse> instance

Returns the AWS Organizations master account that is associated with
AWS Firewall Manager as the AWS Firewall Manager administrator.


=head2 GetComplianceDetail

=over

=item MemberAccount => Str

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::FMS::GetComplianceDetail>

Returns: a L<Paws::FMS::GetComplianceDetailResponse> instance

Returns detailed compliance information about the specified member
account. Details include resources that are in and out of compliance
with the specified policy. Resources are considered non-compliant if
the specified policy has not been applied to them.


=head2 GetNotificationChannel






Each argument is described in detail in: L<Paws::FMS::GetNotificationChannel>

Returns: a L<Paws::FMS::GetNotificationChannelResponse> instance

Returns information about the Amazon Simple Notification Service (SNS)
topic that is used to record AWS Firewall Manager SNS logs.


=head2 GetPolicy

=over

=item PolicyId => Str


=back

Each argument is described in detail in: L<Paws::FMS::GetPolicy>

Returns: a L<Paws::FMS::GetPolicyResponse> instance

Returns information about the specified AWS Firewall Manager policy.


=head2 ListComplianceStatus

=over

=item PolicyId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListComplianceStatus>

Returns: a L<Paws::FMS::ListComplianceStatusResponse> instance

Returns an array of C<PolicyComplianceStatus> objects in the response.
Use C<PolicyComplianceStatus> to get a summary of which member accounts
are protected by the specified policy.


=head2 ListPolicies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::FMS::ListPolicies>

Returns: a L<Paws::FMS::ListPoliciesResponse> instance

Returns an array of C<PolicySummary> objects in the response.


=head2 PutNotificationChannel

=over

=item SnsRoleName => Str

=item SnsTopicArn => Str


=back

Each argument is described in detail in: L<Paws::FMS::PutNotificationChannel>

Returns: nothing

Designates the IAM role and Amazon Simple Notification Service (SNS)
topic that AWS Firewall Manager uses to record SNS logs.


=head2 PutPolicy

=over

=item Policy => L<Paws::FMS::Policy>


=back

Each argument is described in detail in: L<Paws::FMS::PutPolicy>

Returns: a L<Paws::FMS::PutPolicyResponse> instance

Creates an AWS Firewall Manager policy.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

