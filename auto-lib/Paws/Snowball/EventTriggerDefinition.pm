package Paws::Snowball::EventTriggerDefinition;
  use Moose;
  has EventResourceARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::EventTriggerDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::EventTriggerDefinition object:

  $service_obj->Method(Att1 => { EventResourceARN => $value, ..., EventResourceARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::EventTriggerDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->EventResourceARN

=head1 DESCRIPTION

The container for the EventTriggerDefinition$EventResourceARN.

=head1 ATTRIBUTES


=head2 EventResourceARN => Str

  The Amazon Resource Name (ARN) for any local Amazon S3 resource that is
an AWS Lambda function's event trigger associated with this job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

