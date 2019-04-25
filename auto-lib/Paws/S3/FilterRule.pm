package Paws::S3::FilterRule;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::FilterRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::FilterRule object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::FilterRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A container for a key value pair that defines the criteria for the
filter rule.

=head1 ATTRIBUTES


=head2 Name => Str

  The object key name prefix or suffix identifying one or more objects to
which the filtering rule applies. The maximum prefix length is 1,024
characters. Overlapping prefixes and suffixes are not supported. For
more information, see Configuring Event Notifications
(http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html)
in the I<Amazon Simple Storage Service Developer Guide>.


=head2 Value => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

