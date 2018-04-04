package Paws::Translate;
  use Moose;
  sub service { 'translate' }
  sub version { '2017-07-01' }
  sub target_prefix { 'AWSShineFrontendService_20170701' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub TranslateText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::TranslateText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/TranslateText / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate - Perl Interface to AWS Amazon Translate

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Translate');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Provides translation between English and one of six languages, or
between one of the six languages and English.

=head1 METHODS

=head2 TranslateText(SourceLanguageCode => Str, TargetLanguageCode => Str, Text => Str)

Each argument is described in detail in: L<Paws::Translate::TranslateText>

Returns: a L<Paws::Translate::TranslateTextResponse> instance

Translates input text from the source language to the target language.
You can translate between English (en) and one of the following
languages, or between one of the following languages and English.

=over

=item *

Arabic (ar)

=item *

Chinese (Simplified) (zh)

=item *

French (fr)

=item *

German (de)

=item *

Portuguese (pt)

=item *

Spanish (es)

=back

To have Amazon Translate determine the source language of your text,
you can specify C<auto> in the C<SourceLanguageCode> field. If you
specify C<auto>, Amazon Translate will call Amazon Comprehend to
determine the source language.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

