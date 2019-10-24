# Generated from json/callargs_class.tt

package Paws::SSM::GetParameterHistory;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::SSM::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has WithDecryption => (is => 'ro', isa => Bool, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetParameterHistory');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::GetParameterHistoryResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'WithDecryption' => {
                                     'type' => 'Bool'
                                   },
               'Name' => {
                           'type' => 'Str'
                         },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'IsRequired' => {
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetParameterHistory - Arguments for method GetParameterHistory on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetParameterHistory on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetParameterHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetParameterHistory.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetParameterHistoryResult = $ssm->GetParameterHistory(
      Name           => 'MyPSParameterName',
      MaxResults     => 1,                     # OPTIONAL
      NextToken      => 'MyNextToken',         # OPTIONAL
      WithDecryption => 1,                     # OPTIONAL
    );

    # Results:
    my $NextToken  = $GetParameterHistoryResult->NextToken;
    my $Parameters = $GetParameterHistoryResult->Parameters;

    # Returns a L<Paws::SSM::GetParameterHistoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetParameterHistory>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 B<REQUIRED> Name => Str

The name of a parameter you want to query.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 WithDecryption => Bool

Return decrypted values for secure string parameters. This flag is
ignored for String and StringList parameter types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetParameterHistory in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

