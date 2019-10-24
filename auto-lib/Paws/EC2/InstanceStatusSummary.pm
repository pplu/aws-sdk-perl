package Paws::EC2::InstanceStatusSummary;
  use Moo;  use Types::Standard qw/ArrayRef Str/;
  use Paws::EC2::Types qw/EC2_InstanceStatusDetails/;
  has Details => (is => 'ro', isa => ArrayRef[EC2_InstanceStatusDetails]);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Details' => {
                              'class' => 'Paws::EC2::InstanceStatusDetails',
                              'type' => 'ArrayRef[EC2_InstanceStatusDetails]'
                            },
               'Status' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Details' => 'details',
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceStatusSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceStatusSummary object:

  $service_obj->Method(Att1 => { Details => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceStatusSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Details => ArrayRef[EC2_InstanceStatusDetails]

  The system instance health or application instance health.


=head2 Status => Str

  The status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
