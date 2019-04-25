package Paws::DMS::KinesisSettings;
  use Moose;
  has MessageFormat => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str');
  has StreamArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::KinesisSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::KinesisSettings object:

  $service_obj->Method(Att1 => { MessageFormat => $value, ..., StreamArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::KinesisSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->MessageFormat

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 MessageFormat => Str

  The output format for the records created on the endpoint. The message
format is C<JSON>.


=head2 ServiceAccessRoleArn => Str

  The Amazon Resource Name (ARN) for the IAM role that DMS uses to write
to the Amazon Kinesis data stream.


=head2 StreamArn => Str

  The Amazon Resource Name (ARN) for the Amazon Kinesis Data Streams
endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

