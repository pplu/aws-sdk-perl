package Paws::PinpointEmail::PinpointDestination;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::PinpointDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::PinpointDestination object:

  $service_obj->Method(Att1 => { ApplicationArn => $value, ..., ApplicationArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::PinpointDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationArn

=head1 DESCRIPTION

An object that defines a Amazon Pinpoint destination for email events.
You can use Amazon Pinpoint events to create attributes in Amazon
Pinpoint projects. You can use these attributes to create segments for
your campaigns.

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

  The Amazon Resource Name (ARN) of the Amazon Pinpoint project that you
want to send email events to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

