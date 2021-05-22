
package Paws::Honeycode::InvokeScreenAutomation;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has RowId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'rowId');
  has ScreenAutomationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'automationId', required => 1);
  has ScreenId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'screenId', required => 1);
  has Variables => (is => 'ro', isa => 'Paws::Honeycode::VariableValueMap', traits => ['NameInRequest'], request_name => 'variables');
  has WorkbookId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'workbookId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InvokeScreenAutomation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workbooks/{workbookId}/apps/{appId}/screens/{screenId}/automations/{automationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Honeycode::InvokeScreenAutomationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Honeycode::InvokeScreenAutomation - Arguments for method InvokeScreenAutomation on L<Paws::Honeycode>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InvokeScreenAutomation on the
L<Amazon Honeycode|Paws::Honeycode> service. Use the attributes of this class
as arguments to method InvokeScreenAutomation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InvokeScreenAutomation.

=head1 SYNOPSIS

    my $honeycode = Paws->service('Honeycode');
    my $InvokeScreenAutomationResult = $honeycode->InvokeScreenAutomation(
      AppId              => 'MyResourceId',
      ScreenAutomationId => 'MyResourceId',
      ScreenId           => 'MyResourceId',
      WorkbookId         => 'MyResourceId',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      RowId              => 'MyRowId',                 # OPTIONAL
      Variables          => {
        'MyVariableName' => {
          RawValue => 'MyRawValue',                    # max: 32767

        },
      },    # OPTIONAL
    );

    # Results:
    my $WorkbookCursor = $InvokeScreenAutomationResult->WorkbookCursor;

    # Returns a L<Paws::Honeycode::InvokeScreenAutomationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/honeycode/InvokeScreenAutomation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The ID of the app that contains the screen automation.



=head2 ClientRequestToken => Str

The request token for performing the automation action. Request tokens
help to identify duplicate requests. If a call times out or fails due
to a transient error like a failed network connection, you can retry
the call with the same request token. The service ensures that if the
first call using that request token is successfully performed, the
second call will return the response of the previous call rather than
performing the action again.

Note that request tokens are valid only for a few minutes. You cannot
use request tokens to dedupe requests spanning hours or days.



=head2 RowId => Str

The row ID for the automation if the automation is defined inside a
block with source or list.



=head2 B<REQUIRED> ScreenAutomationId => Str

The ID of the automation action to be performed.



=head2 B<REQUIRED> ScreenId => Str

The ID of the screen that contains the screen automation.



=head2 Variables => L<Paws::Honeycode::VariableValueMap>

Variables are specified as a map where the key is the name of the
variable as defined on the screen. The value is an object which
currently has only one property, rawValue, which holds the value of the
variable to be passed to the screen. Any variables defined in a screen
are required to be passed in the call.



=head2 B<REQUIRED> WorkbookId => Str

The ID of the workbook that contains the screen automation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InvokeScreenAutomation in L<Paws::Honeycode>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

