
package Paws::AppSync::DeleteFunction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw//;
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FunctionId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteFunction');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apis/{apiId}/functions/{functionId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'DELETE');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppSync::DeleteFunctionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FunctionId' => {
                                 'type' => 'Str'
                               },
               'ApiId' => {
                            'type' => 'Str'
                          }
             },
  'ParamInURI' => {
                    'FunctionId' => 'functionId',
                    'ApiId' => 'apiId'
                  },
  'IsRequired' => {
                    'FunctionId' => 1,
                    'ApiId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::DeleteFunction - Arguments for method DeleteFunction on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFunction on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method DeleteFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFunction.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $DeleteFunctionResponse = $appsync->DeleteFunction(
      ApiId      => 'MyString',
      FunctionId => 'MyResourceName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/DeleteFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The GraphQL API ID.



=head2 B<REQUIRED> FunctionId => Str

The C<Function> ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFunction in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

