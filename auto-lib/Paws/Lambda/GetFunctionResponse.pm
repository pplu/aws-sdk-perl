
package Paws::Lambda::GetFunctionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Lambda::Types qw/Lambda_Tags Lambda_FunctionConfiguration Lambda_Concurrency Lambda_FunctionCodeLocation/;
  has Code => (is => 'ro', isa => Lambda_FunctionCodeLocation);
  has Concurrency => (is => 'ro', isa => Lambda_Concurrency);
  has Configuration => (is => 'ro', isa => Lambda_FunctionConfiguration);
  has Tags => (is => 'ro', isa => Lambda_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Code' => {
                           'class' => 'Paws::Lambda::FunctionCodeLocation',
                           'type' => 'Lambda_FunctionCodeLocation'
                         },
               'Configuration' => {
                                    'class' => 'Paws::Lambda::FunctionConfiguration',
                                    'type' => 'Lambda_FunctionConfiguration'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::Lambda::Tags',
                           'type' => 'Lambda_Tags'
                         },
               'Concurrency' => {
                                  'class' => 'Paws::Lambda::Concurrency',
                                  'type' => 'Lambda_Concurrency'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetFunctionResponse

=head1 ATTRIBUTES


=head2 Code => Lambda_FunctionCodeLocation

The deployment package of the function or version.


=head2 Concurrency => Lambda_Concurrency

The function's reserved concurrency
(https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html).


=head2 Configuration => Lambda_FunctionConfiguration

The configuration of the function or version.


=head2 Tags => Lambda_Tags

The function's tags
(https://docs.aws.amazon.com/lambda/latest/dg/tagging.html).


=head2 _request_id => Str


=cut

