package Paws::AppConfig::Validator;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::Validator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppConfig::Validator object:

  $service_obj->Method(Att1 => { Content => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppConfig::Validator object:

  $result = $service_obj->Method(...);
  $result->Att1->Content

=head1 DESCRIPTION

A validator provides a syntactic or semantic check to ensure the
configuration you want to deploy functions as intended. To validate
your application configuration data, you provide a schema or a Lambda
function that runs against the configuration. The configuration
deployment or update can only proceed when the configuration data is
valid.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Content => Str

  Either the JSON Schema content or an AWS Lambda function name.


=head2 B<REQUIRED> Type => Str

  AppConfig supports validators of type C<JSON_SCHEMA> and C<LAMBDA>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

