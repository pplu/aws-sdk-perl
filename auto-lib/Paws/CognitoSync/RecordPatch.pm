package Paws::CognitoSync::RecordPatch;
  use Moose;
  has DeviceLastModifiedDate => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Op => (is => 'ro', isa => 'Str', required => 1);
  has SyncCount => (is => 'ro', isa => 'Int', required => 1);
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::RecordPatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoSync::RecordPatch object:

  $service_obj->Method(Att1 => { DeviceLastModifiedDate => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoSync::RecordPatch object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceLastModifiedDate

=head1 DESCRIPTION

An update operation for a record.

=head1 ATTRIBUTES


=head2 DeviceLastModifiedDate => Str

  The last modified date of the client device.


=head2 B<REQUIRED> Key => Str

  The key associated with the record patch.


=head2 B<REQUIRED> Op => Str

  An operation, either replace or remove.


=head2 B<REQUIRED> SyncCount => Int

  Last known server sync count for this record. Set to 0 if unknown.


=head2 Value => Str

  The value associated with the record patch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

