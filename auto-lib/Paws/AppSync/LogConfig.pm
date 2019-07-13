package Paws::AppSync::LogConfig;
  use Moose;
  has CloudWatchLogsRoleArn => (is => 'ro', isa => 'Str', request_name => 'cloudWatchLogsRoleArn', traits => ['NameInRequest'], required => 1);
  has FieldLogLevel => (is => 'ro', isa => 'Str', request_name => 'fieldLogLevel', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::LogConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::LogConfig object:

  $service_obj->Method(Att1 => { CloudWatchLogsRoleArn => $value, ..., FieldLogLevel => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::LogConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogsRoleArn

=head1 DESCRIPTION

The CloudWatch Logs configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CloudWatchLogsRoleArn => Str

  The service role that AWS AppSync will assume to publish to Amazon
CloudWatch logs in your account.


=head2 B<REQUIRED> FieldLogLevel => Str

  The field logging level. Values can be NONE, ERROR, or ALL.

=over

=item *

B<NONE>: No field-level logs are captured.

=item *

B<ERROR>: Logs the following information only for the fields that are
in error:

=over

=item *

The error section in the server response.

=item *

Field-level errors.

=item *

The generated request/response functions that got resolved for error
fields.

=back

=item *

B<ALL>: The following information is logged for all fields in the
query:

=over

=item *

Field-level tracing information.

=item *

The generated request/response functions that got resolved for each
field.

=back

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

