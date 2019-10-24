
package Paws::ApiGateway::ImportApiKeys;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::ApiGateway::Types qw//;
  has Body => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FailOnWarnings => (is => 'ro', isa => Bool, predicate => 1);
  has Format => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  class_has _api_call => (isa => Str, is => 'ro', default => 'ImportApiKeys');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/apikeys?mode=import');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApiGateway::ApiKeyIds');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailOnWarnings' => {
                                     'type' => 'Bool'
                                   },
               'Format' => {
                             'type' => 'Str'
                           },
               'Body' => {
                           'type' => 'Str'
                         }
             },
  'ParamInQuery' => {
                      'FailOnWarnings' => 'failonwarnings',
                      'Format' => 'format'
                    },
  'NameInRequest' => {
                       'Body' => 'body'
                     },
  'IsRequired' => {
                    'Format' => 1,
                    'Body' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ImportApiKeys - Arguments for method ImportApiKeys on L<Paws::ApiGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportApiKeys on the
L<Amazon API Gateway|Paws::ApiGateway> service. Use the attributes of this class
as arguments to method ImportApiKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportApiKeys.

=head1 SYNOPSIS

    my $apigateway = Paws->service('ApiGateway');
    my $ApiKeyIds = $apigateway->ImportApiKeys(
      Body           => 'BlobBlob',
      Format         => 'csv',
      FailOnWarnings => 1,            # OPTIONAL
    );

    # Results:
    my $Ids      = $ApiKeyIds->Ids;
    my $Warnings = $ApiKeyIds->Warnings;

    # Returns a L<Paws::ApiGateway::ApiKeyIds> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apigateway/ImportApiKeys>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

The payload of the POST request to import API keys. For the payload
format, see API Key File Format
(https://docs.aws.amazon.com/apigateway/latest/developerguide/api-key-file-format.html).



=head2 FailOnWarnings => Bool

A query parameter to indicate whether to rollback ApiKey importation
(C<true>) or not (C<false>) when error is encountered.



=head2 B<REQUIRED> Format => Str

A query parameter to specify the input format to imported API keys.
Currently, only the C<csv> format is supported.

Valid values are: C<"csv">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportApiKeys in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

