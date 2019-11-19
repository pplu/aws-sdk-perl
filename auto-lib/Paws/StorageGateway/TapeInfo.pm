# Generated from default/object.tt
package Paws::StorageGateway::TapeInfo;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::StorageGateway::Types qw//;
  has GatewayARN => (is => 'ro', isa => Str);
  has PoolId => (is => 'ro', isa => Str);
  has TapeARN => (is => 'ro', isa => Str);
  has TapeBarcode => (is => 'ro', isa => Str);
  has TapeSizeInBytes => (is => 'ro', isa => Int);
  has TapeStatus => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GatewayARN' => {
                                 'type' => 'Str'
                               },
               'TapeBarcode' => {
                                  'type' => 'Str'
                                },
               'TapeStatus' => {
                                 'type' => 'Str'
                               },
               'TapeSizeInBytes' => {
                                      'type' => 'Int'
                                    },
               'TapeARN' => {
                              'type' => 'Str'
                            },
               'PoolId' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::TapeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::TapeInfo object:

  $service_obj->Method(Att1 => { GatewayARN => $value, ..., TapeStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::TapeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->GatewayARN

=head1 DESCRIPTION

Describes a virtual tape.

=head1 ATTRIBUTES


=head2 GatewayARN => Str

  The Amazon Resource Name (ARN) of the gateway. Use the ListGateways
operation to return a list of gateways for your account and AWS Region.


=head2 PoolId => Str

  The ID of the pool that you want to add your tape to for archiving. The
tape in this pool is archived in the S3 storage class that is
associated with the pool. When you use your backup application to eject
the tape, the tape is archived directly into the storage class (Glacier
or Deep Archive) that corresponds to the pool.

Valid values: "GLACIER", "DEEP_ARCHIVE"


=head2 TapeARN => Str

  The Amazon Resource Name (ARN) of a virtual tape.


=head2 TapeBarcode => Str

  The barcode that identifies a specific virtual tape.


=head2 TapeSizeInBytes => Int

  The size, in bytes, of a virtual tape.


=head2 TapeStatus => Str

  The status of the tape.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

