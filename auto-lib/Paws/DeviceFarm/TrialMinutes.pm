package Paws::DeviceFarm::TrialMinutes;
  use Moose;
  has Remaining => (is => 'ro', isa => 'Num', request_name => 'remaining', traits => ['NameInRequest']);
  has Total => (is => 'ro', isa => 'Num', request_name => 'total', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::TrialMinutes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::TrialMinutes object:

  $service_obj->Method(Att1 => { Remaining => $value, ..., Total => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::TrialMinutes object:

  $result = $service_obj->Method(...);
  $result->Att1->Remaining

=head1 DESCRIPTION

Represents information about free trial device minutes for an AWS
account.

=head1 ATTRIBUTES


=head2 Remaining => Num

  The number of free trial minutes remaining in the account.


=head2 Total => Num

  The total number of free trial minutes that the account started with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

