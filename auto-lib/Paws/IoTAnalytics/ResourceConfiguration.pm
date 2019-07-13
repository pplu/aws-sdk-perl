package Paws::IoTAnalytics::ResourceConfiguration;
  use Moose;
  has ComputeType => (is => 'ro', isa => 'Str', request_name => 'computeType', traits => ['NameInRequest'], required => 1);
  has VolumeSizeInGB => (is => 'ro', isa => 'Int', request_name => 'volumeSizeInGB', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::ResourceConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::ResourceConfiguration object:

  $service_obj->Method(Att1 => { ComputeType => $value, ..., VolumeSizeInGB => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::ResourceConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputeType

=head1 DESCRIPTION

The configuration of the resource used to execute the
"containerAction".

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeType => Str

  The type of the compute resource used to execute the "containerAction".
Possible values are: ACU_1 (vCPU=4, memory=16GiB) or ACU_2 (vCPU=8,
memory=32GiB).


=head2 B<REQUIRED> VolumeSizeInGB => Int

  The size (in GB) of the persistent storage available to the resource
instance used to execute the "containerAction" (min: 1, max: 50).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

