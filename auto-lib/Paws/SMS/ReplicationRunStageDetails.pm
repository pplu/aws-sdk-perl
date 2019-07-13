package Paws::SMS::ReplicationRunStageDetails;
  use Moose;
  has Stage => (is => 'ro', isa => 'Str', request_name => 'stage', traits => ['NameInRequest']);
  has StageProgress => (is => 'ro', isa => 'Str', request_name => 'stageProgress', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::ReplicationRunStageDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::ReplicationRunStageDetails object:

  $service_obj->Method(Att1 => { Stage => $value, ..., StageProgress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::ReplicationRunStageDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Stage

=head1 DESCRIPTION

Details of the current stage of a replication run.

=head1 ATTRIBUTES


=head2 Stage => Str

  String describing the current stage of a replication run.


=head2 StageProgress => Str

  String describing the progress of the current stage of a replication
run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

