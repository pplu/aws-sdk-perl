
package Paws::AppSync::GetIntrospectionSchema;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::AppSync::Types qw//;
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Format => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has IncludeDirectives => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetIntrospectionSchema');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apis/{apiId}/schema');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppSync::GetIntrospectionSchemaResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ApiId' => 1,
                    'Format' => 1
                  },
  'ParamInQuery' => {
                      'IncludeDirectives' => 'includeDirectives',
                      'Format' => 'format'
                    },
  'types' => {
               'IncludeDirectives' => {
                                        'type' => 'Bool'
                                      },
               'ApiId' => {
                            'type' => 'Str'
                          },
               'Format' => {
                             'type' => 'Str'
                           }
             },
  'ParamInURI' => {
                    'ApiId' => 'apiId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetIntrospectionSchema - Arguments for method GetIntrospectionSchema on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIntrospectionSchema on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method GetIntrospectionSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIntrospectionSchema.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $GetIntrospectionSchemaResponse = $appsync->GetIntrospectionSchema(
      ApiId             => 'MyString',
      Format            => 'SDL',
      IncludeDirectives => 1,            # OPTIONAL
    );

    # Results:
    my $Schema = $GetIntrospectionSchemaResponse->Schema;

    # Returns a L<Paws::AppSync::GetIntrospectionSchemaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/GetIntrospectionSchema>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 B<REQUIRED> Format => Str

The schema format: SDL or JSON.

Valid values are: C<"SDL">, C<"JSON">

=head2 IncludeDirectives => Bool

A flag that specifies whether the schema introspection should contain
directives.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIntrospectionSchema in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

