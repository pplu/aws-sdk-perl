package Paws::CodeCommit::ApprovalRuleOverriddenEventMetadata;
  use Moose;
  has OverrideStatus => (is => 'ro', isa => 'Str', request_name => 'overrideStatus', traits => ['NameInRequest']);
  has RevisionId => (is => 'ro', isa => 'Str', request_name => 'revisionId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ApprovalRuleOverriddenEventMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::ApprovalRuleOverriddenEventMetadata object:

  $service_obj->Method(Att1 => { OverrideStatus => $value, ..., RevisionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::ApprovalRuleOverriddenEventMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->OverrideStatus

=head1 DESCRIPTION

Returns information about an override event for approval rules for a
pull request.

=head1 ATTRIBUTES


=head2 OverrideStatus => Str

  The status of the override event.


=head2 RevisionId => Str

  The revision ID of the pull request when the override event occurred.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

