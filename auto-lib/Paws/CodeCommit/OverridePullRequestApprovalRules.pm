
package Paws::CodeCommit::OverridePullRequestApprovalRules;
  use Moose;
  has OverrideStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'overrideStatus' , required => 1);
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' , required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'revisionId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'OverridePullRequestApprovalRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::OverridePullRequestApprovalRules - Arguments for method OverridePullRequestApprovalRules on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method OverridePullRequestApprovalRules on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method OverridePullRequestApprovalRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to OverridePullRequestApprovalRules.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    $codecommit->OverridePullRequestApprovalRules(
      OverrideStatus => 'OVERRIDE',
      PullRequestId  => 'MyPullRequestId',
      RevisionId     => 'MyRevisionId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/OverridePullRequestApprovalRules>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OverrideStatus => Str

Whether you want to set aside approval rule requirements for the pull
request (OVERRIDE) or revoke a previous override and apply approval
rule requirements (REVOKE). REVOKE status is not stored.

Valid values are: C<"OVERRIDE">, C<"REVOKE">

=head2 B<REQUIRED> PullRequestId => Str

The system-generated ID of the pull request for which you want to
override all approval rule requirements. To get this information, use
GetPullRequest.



=head2 B<REQUIRED> RevisionId => Str

The system-generated ID of the most recent revision of the pull
request. You cannot override approval rules for anything but the most
recent revision of a pull request. To get the revision ID, use
GetPullRequest.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method OverridePullRequestApprovalRules in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

