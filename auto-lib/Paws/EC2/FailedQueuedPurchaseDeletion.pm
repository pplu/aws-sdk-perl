package Paws::EC2::FailedQueuedPurchaseDeletion;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_DeleteQueuedReservedInstancesError/;
  has Error => (is => 'ro', isa => EC2_DeleteQueuedReservedInstancesError);
  has ReservedInstancesId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ReservedInstancesId' => 'reservedInstancesId',
                       'Error' => 'error'
                     },
  'types' => {
               'ReservedInstancesId' => {
                                          'type' => 'Str'
                                        },
               'Error' => {
                            'class' => 'Paws::EC2::DeleteQueuedReservedInstancesError',
                            'type' => 'EC2_DeleteQueuedReservedInstancesError'
                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FailedQueuedPurchaseDeletion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FailedQueuedPurchaseDeletion object:

  $service_obj->Method(Att1 => { Error => $value, ..., ReservedInstancesId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FailedQueuedPurchaseDeletion object:

  $result = $service_obj->Method(...);
  $result->Att1->Error

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Error => EC2_DeleteQueuedReservedInstancesError

  The error.


=head2 ReservedInstancesId => Str

  The ID of the Reserved Instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
