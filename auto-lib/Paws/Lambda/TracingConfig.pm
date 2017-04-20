package Paws::Lambda::TracingConfig;
  use Moose;
  has Mode => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::TracingConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::TracingConfig object:

  $service_obj->Method(Att1 => { Mode => $value, ..., Mode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::TracingConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Mode

=head1 DESCRIPTION

The parent object that contains your function's tracing settings.

=head1 ATTRIBUTES


=head2 Mode => Str

  Can be either PassThrough or Active. If PassThrough, Lambda will only
trace the request from an upstream service if it contains a tracing
header with "sampled=1". If Active, Lambda will respect any tracing
header it receives from an upstream service. If no tracing header is
received, Lambda will call X-Ray for a tracing decision.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

