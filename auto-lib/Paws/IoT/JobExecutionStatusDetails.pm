package Paws::IoT::JobExecutionStatusDetails;
  use Moose;
  has DetailsMap => (is => 'ro', isa => 'Paws::IoT::DetailsMap', request_name => 'detailsMap', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::JobExecutionStatusDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::JobExecutionStatusDetails object:

  $service_obj->Method(Att1 => { DetailsMap => $value, ..., DetailsMap => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::JobExecutionStatusDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->DetailsMap

=head1 DESCRIPTION

Details of the job execution status.

=head1 ATTRIBUTES


=head2 DetailsMap => L<Paws::IoT::DetailsMap>

  The job execution status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

