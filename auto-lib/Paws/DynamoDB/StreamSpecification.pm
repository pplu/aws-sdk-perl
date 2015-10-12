package Paws::DynamoDB::StreamSpecification;
  use Moose;
  has StreamEnabled => (is => 'ro', isa => 'Bool');
  has StreamViewType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::StreamSpecification

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::StreamSpecification object:

  $service_obj->Method(Att1 => { StreamEnabled => $value, ..., StreamViewType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::StreamSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->StreamEnabled

=head1 ATTRIBUTES

=head2 StreamEnabled => Bool

  

Indicates whether DynamoDB Streams is enabled (true) or disabled
(false) on the table.










=head2 StreamViewType => Str

  

The DynamoDB Streams settings for the table. These settings consist of:

=over

=item *

I<StreamEnabled> - Indicates whether DynamoDB Streams is enabled (true)
or disabled (false) on the table.

=item *

I<StreamViewType> - When an item in the table is modified,
I<StreamViewType> determines what information is written to the stream
for this table. Valid values for I<StreamViewType> are:

=over

=item *

I<KEYS_ONLY> - Only the key attributes of the modified item are written
to the stream.

=item *

I<NEW_IMAGE> - The entire item, as it appears after it was modified, is
written to the stream.

=item *

I<OLD_IMAGE> - The entire item, as it appeared before it was modified,
is written to the stream.

=item *

I<NEW_AND_OLD_IMAGES> - Both the new and the old item images of the
item are written to the stream.

=back

=back












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

