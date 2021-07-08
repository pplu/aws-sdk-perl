
package Paws::Lambda::GetFunctionCodeSigningConfigResponse;
  use Moose;
  has CodeSigningConfigArn => (is => 'ro', isa => 'Str', required => 1);
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetFunctionCodeSigningConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CodeSigningConfigArn => Str

The The Amazon Resource Name (ARN) of the code signing configuration.


=head2 B<REQUIRED> FunctionName => Str

The name of the Lambda function.

B<Name formats>

=over

=item *

B<Function name> - C<MyFunction>.

=item *

B<Function ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction>.

=item *

B<Partial ARN> - C<123456789012:function:MyFunction>.

=back

The length constraint applies only to the full ARN. If you specify only
the function name, it is limited to 64 characters in length.


=head2 _request_id => Str


=cut

