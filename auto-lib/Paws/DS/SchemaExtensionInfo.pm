package Paws::DS::SchemaExtensionInfo;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has SchemaExtensionId => (is => 'ro', isa => 'Str');
  has SchemaExtensionStatus => (is => 'ro', isa => 'Str');
  has SchemaExtensionStatusReason => (is => 'ro', isa => 'Str');
  has StartDateTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::SchemaExtensionInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::SchemaExtensionInfo object:

  $service_obj->Method(Att1 => { Description => $value, ..., StartDateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::SchemaExtensionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Information about a schema extension.

=head1 ATTRIBUTES


=head2 Description => Str

  A description of the schema extension.


=head2 DirectoryId => Str

  The identifier of the directory to which the schema extension is
applied.


=head2 EndDateTime => Str

  The date and time that the schema extension was completed.


=head2 SchemaExtensionId => Str

  The identifier of the schema extension.


=head2 SchemaExtensionStatus => Str

  The current status of the schema extension.


=head2 SchemaExtensionStatusReason => Str

  The reason for the C<SchemaExtensionStatus>.


=head2 StartDateTime => Str

  The date and time that the schema extension started being applied to
the directory.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

