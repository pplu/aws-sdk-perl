package Paws::LexModels::BotMetadata;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', request_name => 'createdDate', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastUpdatedDate => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedDate', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::BotMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::BotMetadata object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::BotMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

Provides information about a bot. .

=head1 ATTRIBUTES


=head2 CreatedDate => Str

  The date that the bot was created.


=head2 Description => Str

  A description of the bot.


=head2 LastUpdatedDate => Str

  The date that the bot was updated. When you create a bot, the creation
date and last updated date are the same.


=head2 Name => Str

  The name of the bot.


=head2 Status => Str

  The status of the bot.


=head2 Version => Str

  The version of the bot. For a new bot, the version is always
C<$LATEST>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

