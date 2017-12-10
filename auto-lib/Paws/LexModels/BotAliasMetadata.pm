package Paws::LexModels::BotAliasMetadata;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', request_name => 'botName', traits => ['NameInRequest']);
  has BotVersion => (is => 'ro', isa => 'Str', request_name => 'botVersion', traits => ['NameInRequest']);
  has Checksum => (is => 'ro', isa => 'Str', request_name => 'checksum', traits => ['NameInRequest']);
  has CreatedDate => (is => 'ro', isa => 'Str', request_name => 'createdDate', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedDate', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::BotAliasMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::BotAliasMetadata object:

  $service_obj->Method(Att1 => { BotName => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::BotAliasMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->BotName

=head1 DESCRIPTION

Provides information about a bot alias.

=head1 ATTRIBUTES


=head2 BotName => Str

  The name of the bot to which the alias points.


=head2 BotVersion => Str

  The version of the Amazon Lex bot to which the alias points.


=head2 Checksum => Str

  Checksum of the bot alias.


=head2 CreatedDate => Str

  The date that the bot alias was created.


=head2 Description => Str

  A description of the bot alias.


=head2 LastUpdatedDate => Str

  The date that the bot alias was updated. When you create a resource,
the creation date and last updated date are the same.


=head2 Name => Str

  The name of the bot alias.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

