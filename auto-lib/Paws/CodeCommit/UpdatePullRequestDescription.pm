
package Paws::CodeCommit::UpdatePullRequestDescription;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' , required => 1);
  has PullRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pullRequestId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePullRequestDescription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::UpdatePullRequestDescriptionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::UpdatePullRequestDescription - Arguments for method UpdatePullRequestDescription on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePullRequestDescription on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method UpdatePullRequestDescription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePullRequestDescription.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $UpdatePullRequestDescriptionOutput =
      $codecommit->UpdatePullRequestDescription(
      Description   => 'MyDescription',
      PullRequestId => 'MyPullRequestId',

      );

    # Results:
    my $PullRequest = $UpdatePullRequestDescriptionOutput->PullRequest;

    # Returns a L<Paws::CodeCommit::UpdatePullRequestDescriptionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/UpdatePullRequestDescription>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Description => Str

The updated content of the description for the pull request. This
content will replace the existing description.



=head2 B<REQUIRED> PullRequestId => Str

The system-generated ID of the pull request. To get this ID, use
ListPullRequests.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePullRequestDescription in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

