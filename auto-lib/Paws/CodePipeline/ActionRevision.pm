package Paws::CodePipeline::ActionRevision;
  use Moose;
  has Created => (is => 'ro', isa => 'Str', request_name => 'created', traits => ['NameInRequest'], required => 1);
  has RevisionChangeId => (is => 'ro', isa => 'Str', request_name => 'revisionChangeId', traits => ['NameInRequest'], required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', request_name => 'revisionId', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionRevision

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionRevision object:

  $service_obj->Method(Att1 => { Created => $value, ..., RevisionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionRevision object:

  $result = $service_obj->Method(...);
  $result->Att1->Created

=head1 DESCRIPTION

Represents information about the version (or revision) of an action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Created => Str

  The date and time when the most recent version of the action was
created, in timestamp format.


=head2 B<REQUIRED> RevisionChangeId => Str

  The unique identifier of the change that set the state to this
revision, for example a deployment ID or timestamp.


=head2 B<REQUIRED> RevisionId => Str

  The system-generated unique ID that identifies the revision number of
the action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

