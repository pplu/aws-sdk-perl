
package Paws::CognitoSync::ListDatasets {
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatasets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::ListDatasetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListDatasetsResult');
}
1;