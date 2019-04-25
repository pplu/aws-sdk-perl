package Paws::PinpointEmail::CloudWatchDimensionConfiguration;
  use Moose;
  has DefaultDimensionValue => (is => 'ro', isa => 'Str', required => 1);
  has DimensionName => (is => 'ro', isa => 'Str', required => 1);
  has DimensionValueSource => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::CloudWatchDimensionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::CloudWatchDimensionConfiguration object:

  $service_obj->Method(Att1 => { DefaultDimensionValue => $value, ..., DimensionValueSource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::CloudWatchDimensionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultDimensionValue

=head1 DESCRIPTION

An object that defines the dimension configuration to use when you send
Amazon Pinpoint email events to Amazon CloudWatch.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DefaultDimensionValue => Str

  The default value of the dimension that is published to Amazon
CloudWatch if you don't provide the value of the dimension when you
send an email. This value has to meet the following criteria:

=over

=item *

It can only contain ASCII letters (a-z, A-Z), numbers (0-9),
underscores (_), or dashes (-).

=item *

It can contain no more than 256 characters.

=back



=head2 B<REQUIRED> DimensionName => Str

  The name of an Amazon CloudWatch dimension associated with an email
sending metric. The name has to meet the following criteria:

=over

=item *

It can only contain ASCII letters (a-z, A-Z), numbers (0-9),
underscores (_), or dashes (-).

=item *

It can contain no more than 256 characters.

=back



=head2 B<REQUIRED> DimensionValueSource => Str

  The location where Amazon Pinpoint finds the value of a dimension to
publish to Amazon CloudWatch. If you want Amazon Pinpoint to use the
message tags that you specify using an X-SES-MESSAGE-TAGS header or a
parameter to the SendEmail/SendRawEmail API, choose C<messageTag>. If
you want Amazon Pinpoint to use your own email headers, choose
C<emailHeader>. If you want Amazon Pinpoint to use link tags, choose
C<linkTags>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

