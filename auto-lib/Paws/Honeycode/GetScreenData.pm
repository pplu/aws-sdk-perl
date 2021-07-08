
package Paws::Honeycode::GetScreenData;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ScreenId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'screenId', required => 1);
  has Variables => (is => 'ro', isa => 'Paws::Honeycode::VariableValueMap', traits => ['NameInRequest'], request_name => 'variables');
  has WorkbookId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'workbookId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetScreenData');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/screendata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Honeycode::GetScreenDataResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::GetScreenData - Arguments for method GetScreenData on L<Paws::Honeycode>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetScreenData on the
L<Amazon Honeycode|Paws::Honeycode> service. Use the attributes of this class
as arguments to method GetScreenData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetScreenData.

=head1 SYNOPSIS

    my $honeycode = Paws->service('Honeycode');
    my $GetScreenDataResult = $honeycode->GetScreenData(
      AppId      => 'MyResourceId',
      ScreenId   => 'MyResourceId',
      WorkbookId => 'MyResourceId',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Variables  => {
        'MyVariableName' => {
          RawValue => 'MyRawValue',         # max: 32767

        },
      },    # OPTIONAL
    );

    # Results:
    my $NextToken      = $GetScreenDataResult->NextToken;
    my $Results        = $GetScreenDataResult->Results;
    my $WorkbookCursor = $GetScreenDataResult->WorkbookCursor;

    # Returns a L<Paws::Honeycode::GetScreenDataResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/honeycode/GetScreenData>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The ID of the app that contains the screem.



=head2 MaxResults => Int

The number of results to be returned on a single page. Specify a number
between 1 and 100. The maximum value is 100.

This parameter is optional. If you don't specify this parameter, the
default page size is 100.



=head2 NextToken => Str

This parameter is optional. If a nextToken is not specified, the API
returns the first page of data.

Pagination tokens expire after 1 hour. If you use a token that was
returned more than an hour back, the API will throw
ValidationException.



=head2 B<REQUIRED> ScreenId => Str

The ID of the screen.



=head2 Variables => L<Paws::Honeycode::VariableValueMap>

Variables are optional and are needed only if the screen requires them
to render correctly. Variables are specified as a map where the key is
the name of the variable as defined on the screen. The value is an
object which currently has only one property, rawValue, which holds the
value of the variable to be passed to the screen.



=head2 B<REQUIRED> WorkbookId => Str

The ID of the workbook that contains the screen.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetScreenData in L<Paws::Honeycode>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

