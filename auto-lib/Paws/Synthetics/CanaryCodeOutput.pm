# Generated by default/object.tt
package Paws::Synthetics::CanaryCodeOutput;
  use Moose;
  has Handler => (is => 'ro', isa => 'Str');
  has SourceLocationArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::CanaryCodeOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Synthetics::CanaryCodeOutput object:

  $service_obj->Method(Att1 => { Handler => $value, ..., SourceLocationArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Synthetics::CanaryCodeOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->Handler

=head1 DESCRIPTION

This structure contains information about the canary's Lambda handler
and where its code is stored by CloudWatch Synthetics.

=head1 ATTRIBUTES


=head2 Handler => Str

The entry point to use for the source code when running the canary.


=head2 SourceLocationArn => Str

The ARN of the Lambda layer where Synthetics stores the canary script
code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

