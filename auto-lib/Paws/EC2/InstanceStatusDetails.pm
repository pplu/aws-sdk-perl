package Paws::EC2::InstanceStatusDetails;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has ImpairedSince => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'Name' => {
                           'type' => 'Str'
                         },
               'ImpairedSince' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'Name' => 'name',
                       'ImpairedSince' => 'impairedSince'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceStatusDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceStatusDetails object:

  $service_obj->Method(Att1 => { ImpairedSince => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceStatusDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ImpairedSince

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ImpairedSince => Str

  The time when a status check failed. For an instance that was launched
and impaired, this is the time when the instance was launched.


=head2 Name => Str

  The type of instance status.


=head2 Status => Str

  The status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
