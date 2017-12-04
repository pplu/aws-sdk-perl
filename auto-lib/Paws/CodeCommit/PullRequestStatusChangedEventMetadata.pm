package Paws::CodeCommit::PullRequestStatusChangedEventMetadata;
  use Moose;
  has PullRequestStatus => (is => 'ro', isa => 'Str', request_name => 'pullRequestStatus', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PullRequestStatusChangedEventMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::PullRequestStatusChangedEventMetadata object:

  $service_obj->Method(Att1 => { PullRequestStatus => $value, ..., PullRequestStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::PullRequestStatusChangedEventMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->PullRequestStatus

=head1 DESCRIPTION

Information about a change to the status of a pull request.

=head1 ATTRIBUTES


=head2 PullRequestStatus => Str

  The changed status of the pull request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

