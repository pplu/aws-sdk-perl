package Paws::IoTAnalytics::EstimatedResourceSize;
  use Moose;
  has EstimatedOn => (is => 'ro', isa => 'Str', request_name => 'estimatedOn', traits => ['NameInRequest']);
  has EstimatedSizeInBytes => (is => 'ro', isa => 'Num', request_name => 'estimatedSizeInBytes', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::EstimatedResourceSize

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::EstimatedResourceSize object:

  $service_obj->Method(Att1 => { EstimatedOn => $value, ..., EstimatedSizeInBytes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::EstimatedResourceSize object:

  $result = $service_obj->Method(...);
  $result->Att1->EstimatedOn

=head1 DESCRIPTION

The estimated size of the resource.

=head1 ATTRIBUTES


=head2 EstimatedOn => Str

  The time when the estimate of the size of the resource was made.


=head2 EstimatedSizeInBytes => Num

  The estimated size of the resource in bytes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

