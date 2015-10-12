package Paws::EFS::FileSystemSize;
  use Moose;
  has Timestamp => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::FileSystemSize

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EFS::FileSystemSize object:

  $service_obj->Method(Att1 => { Timestamp => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EFS::FileSystemSize object:

  $result = $service_obj->Method(...);
  $result->Att1->Timestamp

=head1 ATTRIBUTES

=head2 Timestamp => Str

  

The time at which the size of data, returned in the C<Value> field, was
determined. The value is the integer number of seconds since
1970-01-01T00:00:00Z.










=head2 B<REQUIRED> Value => Int

  

The latest known metered size, in bytes, of data stored in the file
system.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

