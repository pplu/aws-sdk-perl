package Paws::CognitoSync::Record;
  use Moose;
  has DeviceLastModifiedDate => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has LastModifiedBy => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has SyncCount => (is => 'ro', isa => 'Int');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::Record

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoSync::Record object:

  $service_obj->Method(Att1 => { DeviceLastModifiedDate => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoSync::Record object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceLastModifiedDate

=head1 DESCRIPTION

The basic data structure of a dataset.

=head1 ATTRIBUTES


=head2 DeviceLastModifiedDate => Str

  The last modified date of the client device.


=head2 Key => Str

  The key for the record.


=head2 LastModifiedBy => Str

  The user/device that made the last change to this record.


=head2 LastModifiedDate => Str

  The date on which the record was last modified.


=head2 SyncCount => Int

  The server sync count for this record.


=head2 Value => Str

  The value for the record.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

