
package Paws::AppSync::CreateResolver;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_PipelineConfig/;
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DataSourceName => (is => 'ro', isa => Str, predicate => 1);
  has FieldName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Kind => (is => 'ro', isa => Str, predicate => 1);
  has PipelineConfig => (is => 'ro', isa => AppSync_PipelineConfig, predicate => 1);
  has RequestMappingTemplate => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResponseMappingTemplate => (is => 'ro', isa => Str, predicate => 1);
  has TypeName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateResolver');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apis/{apiId}/types/{typeName}/resolvers');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppSync::CreateResolverResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RequestMappingTemplate' => {
                                             'type' => 'Str'
                                           },
               'DataSourceName' => {
                                     'type' => 'Str'
                                   },
               'ApiId' => {
                            'type' => 'Str'
                          },
               'FieldName' => {
                                'type' => 'Str'
                              },
               'ResponseMappingTemplate' => {
                                              'type' => 'Str'
                                            },
               'Kind' => {
                           'type' => 'Str'
                         },
               'PipelineConfig' => {
                                     'class' => 'Paws::AppSync::PipelineConfig',
                                     'type' => 'AppSync_PipelineConfig'
                                   },
               'TypeName' => {
                               'type' => 'Str'
                             }
             },
  'ParamInURI' => {
                    'TypeName' => 'typeName',
                    'ApiId' => 'apiId'
                  },
  'NameInRequest' => {
                       'PipelineConfig' => 'pipelineConfig',
                       'RequestMappingTemplate' => 'requestMappingTemplate',
                       'DataSourceName' => 'dataSourceName',
                       'FieldName' => 'fieldName',
                       'ResponseMappingTemplate' => 'responseMappingTemplate',
                       'Kind' => 'kind'
                     },
  'IsRequired' => {
                    'RequestMappingTemplate' => 1,
                    'TypeName' => 1,
                    'ApiId' => 1,
                    'FieldName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateResolver - Arguments for method CreateResolver on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResolver on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateResolver.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResolver.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateResolverResponse = $appsync->CreateResolver(
      ApiId                  => 'MyString',
      FieldName              => 'MyResourceName',
      RequestMappingTemplate => 'MyMappingTemplate',
      TypeName               => 'MyResourceName',
      DataSourceName         => 'MyResourceName',      # OPTIONAL
      Kind                   => 'UNIT',                # OPTIONAL
      PipelineConfig         => {
        Functions => [ 'MyString', ... ],              # OPTIONAL
      },    # OPTIONAL
      ResponseMappingTemplate => 'MyMappingTemplate',    # OPTIONAL
    );

    # Results:
    my $Resolver = $CreateResolverResponse->Resolver;

    # Returns a L<Paws::AppSync::CreateResolverResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateResolver>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The ID for the GraphQL API for which the resolver is being created.



=head2 DataSourceName => Str

The name of the data source for which the resolver is being created.



=head2 B<REQUIRED> FieldName => Str

The name of the field to attach the resolver to.



=head2 Kind => Str

The resolver type.

=over

=item *

B<UNIT>: A UNIT resolver type. A UNIT resolver is the default resolver
type. A UNIT resolver enables you to execute a GraphQL query against a
single data source.

=item *

B<PIPELINE>: A PIPELINE resolver type. A PIPELINE resolver enables you
to execute a series of C<Function> in a serial manner. You can use a
pipeline resolver to execute a GraphQL query against multiple data
sources.

=back


Valid values are: C<"UNIT">, C<"PIPELINE">

=head2 PipelineConfig => AppSync_PipelineConfig

The C<PipelineConfig>.



=head2 B<REQUIRED> RequestMappingTemplate => Str

The mapping template to be used for requests.

A resolver uses a request mapping template to convert a GraphQL
expression into a format that a data source can understand. Mapping
templates are written in Apache Velocity Template Language (VTL).



=head2 ResponseMappingTemplate => Str

The mapping template to be used for responses from the data source.



=head2 B<REQUIRED> TypeName => Str

The name of the C<Type>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResolver in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

