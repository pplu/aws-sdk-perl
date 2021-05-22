
package Paws::Connect::DisassociateLexBot;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'botName', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has LexRegion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'lexRegion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateLexBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/instance/{InstanceId}/lex-bot');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::DisassociateLexBot - Arguments for method DisassociateLexBot on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateLexBot on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method DisassociateLexBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateLexBot.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->DisassociateLexBot(
      BotName    => 'MyBotName',
      InstanceId => 'MyInstanceId',
      LexRegion  => 'MyLexRegion',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/DisassociateLexBot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotName => Str

The name of the Amazon Lex bot. Maximum character limit of 50.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 B<REQUIRED> LexRegion => Str

The Region in which the Amazon Lex bot has been created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateLexBot in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

