package Paws::Batch::NodeOverrides;
  use Moose;
  has NodePropertyOverrides => (is => 'ro', isa => 'ArrayRef[Paws::Batch::NodePropertyOverride]', request_name => 'nodePropertyOverrides', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::NodeOverrides

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::NodeOverrides object:

  $service_obj->Method(Att1 => { NodePropertyOverrides => $value, ..., NodePropertyOverrides => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::NodeOverrides object:

  $result = $service_obj->Method(...);
  $result->Att1->NodePropertyOverrides

=head1 DESCRIPTION

Object representing any node overrides to a job definition that is used
in a SubmitJob API operation.

=head1 ATTRIBUTES


=head2 NodePropertyOverrides => ArrayRef[L<Paws::Batch::NodePropertyOverride>]

  The node property overrides for the job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

