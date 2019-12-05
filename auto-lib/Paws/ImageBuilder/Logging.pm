package Paws::ImageBuilder::Logging;
  use Moose;
  has S3Logs => (is => 'ro', isa => 'Paws::ImageBuilder::S3Logs', request_name => 's3Logs', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::Logging

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ImageBuilder::Logging object:

  $service_obj->Method(Att1 => { S3Logs => $value, ..., S3Logs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ImageBuilder::Logging object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Logs

=head1 DESCRIPTION

Logging configuration defines where Image Builder uploads your logs to.

=head1 ATTRIBUTES


=head2 S3Logs => L<Paws::ImageBuilder::S3Logs>

  The S3 logging configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

