package Paws::LexModels::SlotTypeConfiguration;
  use Moose;
  has RegexConfiguration => (is => 'ro', isa => 'Paws::LexModels::SlotTypeRegexConfiguration', request_name => 'regexConfiguration', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::SlotTypeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LexModels::SlotTypeConfiguration object:

  $service_obj->Method(Att1 => { RegexConfiguration => $value, ..., RegexConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LexModels::SlotTypeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->RegexConfiguration

=head1 DESCRIPTION

Provides configuration information for a slot type.

=head1 ATTRIBUTES


=head2 RegexConfiguration => L<Paws::LexModels::SlotTypeRegexConfiguration>

  A regular expression used to validate the value of a slot.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

