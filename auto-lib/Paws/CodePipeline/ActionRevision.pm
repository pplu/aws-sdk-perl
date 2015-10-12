package Paws::CodePipeline::ActionRevision;
  use Moose;
  has created => (is => 'ro', isa => 'Str', required => 1);
  has revisionChangeId => (is => 'ro', isa => 'Str');
  has revisionId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionRevision

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionRevision object:

  $service_obj->Method(Att1 => { created => $value, ..., revisionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionRevision object:

  $result = $service_obj->Method(...);
  $result->Att1->created

=head1 ATTRIBUTES

=head2 B<REQUIRED> created => Str

  The date and time when the most recent version of the action was
created, in timestamp format.

=head2 revisionChangeId => Str

  The unique identifier of the change that set the state to this
revision, for example a deployment ID or timestamp.

=head2 B<REQUIRED> revisionId => Str

  The system-generated unique ID that identifies the revision number of
the action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

