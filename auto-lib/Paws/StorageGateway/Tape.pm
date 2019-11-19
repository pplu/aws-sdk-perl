# Generated from default/object.tt
package Paws::StorageGateway::Tape;
  use Moo;
  use Types::Standard qw/Str Num Int/;
  use Paws::StorageGateway::Types qw//;
  has KMSKey => (is => 'ro', isa => Str);
  has PoolId => (is => 'ro', isa => Str);
  has Progress => (is => 'ro', isa => Num);
  has TapeARN => (is => 'ro', isa => Str);
  has TapeBarcode => (is => 'ro', isa => Str);
  has TapeCreatedDate => (is => 'ro', isa => Str);
  has TapeSizeInBytes => (is => 'ro', isa => Int);
  has TapeStatus => (is => 'ro', isa => Str);
  has TapeUsedInBytes => (is => 'ro', isa => Int);
  has VTLDevice => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TapeBarcode' => {
                                  'type' => 'Str'
                                },
               'TapeCreatedDate' => {
                                      'type' => 'Str'
                                    },
               'TapeStatus' => {
                                 'type' => 'Str'
                               },
               'TapeSizeInBytes' => {
                                      'type' => 'Int'
                                    },
               'KMSKey' => {
                             'type' => 'Str'
                           },
               'TapeUsedInBytes' => {
                                      'type' => 'Int'
                                    },
               'VTLDevice' => {
                                'type' => 'Str'
                              },
               'TapeARN' => {
                              'type' => 'Str'
                            },
               'PoolId' => {
                             'type' => 'Str'
                           },
               'Progress' => {
                               'type' => 'Num'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::Tape

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::Tape object:

  $service_obj->Method(Att1 => { KMSKey => $value, ..., VTLDevice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::Tape object:

  $result = $service_obj->Method(...);
  $result->Att1->KMSKey

=head1 DESCRIPTION

Describes a virtual tape object.

=head1 ATTRIBUTES


=head2 KMSKey => Str

  


=head2 PoolId => Str

  The ID of the pool that contains tapes that will be archived. The tapes
in this pool are archived in the S3 storage class that is associated
with the pool. When you use your backup application to eject the tape,
the tape is archived directly into the storage class (Glacier or Deep
Archive) that corresponds to the pool.

Valid values: "GLACIER", "DEEP_ARCHIVE"


=head2 Progress => Num

  For archiving virtual tapes, indicates how much data remains to be
uploaded before archiving is complete.

Range: 0 (not started) to 100 (complete).


=head2 TapeARN => Str

  The Amazon Resource Name (ARN) of the virtual tape.


=head2 TapeBarcode => Str

  The barcode that identifies a specific virtual tape.


=head2 TapeCreatedDate => Str

  The date the virtual tape was created.


=head2 TapeSizeInBytes => Int

  The size, in bytes, of the virtual tape capacity.


=head2 TapeStatus => Str

  The current state of the virtual tape.


=head2 TapeUsedInBytes => Int

  The size, in bytes, of data stored on the virtual tape.

This value is not available for tapes created prior to May 13, 2015.


=head2 VTLDevice => Str

  The virtual tape library (VTL) device that the virtual tape is
associated with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

