
package Paws::LexModelsV2::DescribeBot;
  use Moose;
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBot');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModelsV2::DescribeBotResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModelsV2::DescribeBot - Arguments for method DescribeBot on L<Paws::LexModelsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBot on the
L<Amazon Lex Model Building V2|Paws::LexModelsV2> service. Use the attributes of this class
as arguments to method DescribeBot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBot.

=head1 SYNOPSIS

    my $models-v2-lex = Paws->service('LexModelsV2');
    my $DescribeBotResponse = $models - v2 -lex->DescribeBot(
      BotId => 'MyId',

    );

    # Results:
    my $BotId                   = $DescribeBotResponse->BotId;
    my $BotName                 = $DescribeBotResponse->BotName;
    my $BotStatus               = $DescribeBotResponse->BotStatus;
    my $CreationDateTime        = $DescribeBotResponse->CreationDateTime;
    my $DataPrivacy             = $DescribeBotResponse->DataPrivacy;
    my $Description             = $DescribeBotResponse->Description;
    my $IdleSessionTTLInSeconds = $DescribeBotResponse->IdleSessionTTLInSeconds;
    my $LastUpdatedDateTime     = $DescribeBotResponse->LastUpdatedDateTime;
    my $RoleArn                 = $DescribeBotResponse->RoleArn;

    # Returns a L<Paws::LexModelsV2::DescribeBotResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models-v2-lex/DescribeBot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotId => Str

The unique identifier of the bot to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBot in L<Paws::LexModelsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

