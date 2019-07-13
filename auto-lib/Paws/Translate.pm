package Paws::Translate;
  use Moose;
  sub service { 'translate' }
  sub signing_name { 'translate' }
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

  
  sub DeleteTerminology {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::DeleteTerminology', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTerminology {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::GetTerminology', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportTerminology {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::ImportTerminology', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTerminologies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::ListTerminologies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TranslateText {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Translate::TranslateText', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllTerminologies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTerminologies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTerminologies(@_, NextToken => $next_result->NextToken);
        push @{ $result->TerminologyPropertiesList }, @{ $next_result->TerminologyPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TerminologyPropertiesList') foreach (@{ $result->TerminologyPropertiesList });
        $result = $self->ListTerminologies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TerminologyPropertiesList') foreach (@{ $result->TerminologyPropertiesList });
    }

    return undef
  }


  sub operations { qw/DeleteTerminology GetTerminology ImportTerminology ListTerminologies TranslateText / }

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

Provides translation between one source language and another of the
same set of languages.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate-2017-07-01>


=head1 METHODS

=head2 DeleteTerminology

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Translate::DeleteTerminology>

Returns: nothing

A synchronous action that deletes a custom terminology.


=head2 GetTerminology

=over

=item Name => Str

=item TerminologyDataFormat => Str


=back

Each argument is described in detail in: L<Paws::Translate::GetTerminology>

Returns: a L<Paws::Translate::GetTerminologyResponse> instance

Retrieves a custom terminology.


=head2 ImportTerminology

=over

=item MergeStrategy => Str

=item Name => Str

=item TerminologyData => L<Paws::Translate::TerminologyData>

=item [Description => Str]

=item [EncryptionKey => L<Paws::Translate::EncryptionKey>]


=back

Each argument is described in detail in: L<Paws::Translate::ImportTerminology>

Returns: a L<Paws::Translate::ImportTerminologyResponse> instance

Creates or updates a custom terminology, depending on whether or not
one already exists for the given terminology name. Importing a
terminology with the same name as an existing one will merge the
terminologies based on the chosen merge strategy. Currently, the only
supported merge strategy is OVERWRITE, and so the imported terminology
will overwrite an existing terminology of the same name.

If you import a terminology that overwrites an existing one, the new
terminology take up to 10 minutes to fully propagate and be available
for use in a translation due to cache policies with the DataPlane
service that performs the translations.


=head2 ListTerminologies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Translate::ListTerminologies>

Returns: a L<Paws::Translate::ListTerminologiesResponse> instance

Provides a list of custom terminologies associated with your account.


=head2 TranslateText

=over

=item SourceLanguageCode => Str

=item TargetLanguageCode => Str

=item Text => Str

=item [TerminologyNames => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Translate::TranslateText>

Returns: a L<Paws::Translate::TranslateTextResponse> instance

Translates input text from the source language to the target language.
It is not necessary to use English (en) as either the source or the
target language but not all language combinations are supported by
Amazon Translate. For more information, see Supported Language Pairs
(http://docs.aws.amazon.com/translate/latest/dg/pairs.html).

=over

=item *

Arabic (ar)

=item *

Chinese (Simplified) (zh)

=item *

Chinese (Traditional) (zh-TW)

=item *

Czech (cs)

=item *

Danish (da)

=item *

Dutch (nl)

=item *

English (en)

=item *

Finnish (fi)

=item *

French (fr)

=item *

German (de)

=item *

Hebrew (he)

=item *

Indonesian (id)

=item *

Italian (it)

=item *

Japanese (ja)

=item *

Korean (ko)

=item *

Polish (pl)

=item *

Portuguese (pt)

=item *

Russian (ru)

=item *

Spanish (es)

=item *

Swedish (sv)

=item *

Turkish (tr)

=back

To have Amazon Translate determine the source language of your text,
you can specify C<auto> in the C<SourceLanguageCode> field. If you
specify C<auto>, Amazon Translate will call Amazon Comprehend to
determine the source language.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllTerminologies(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllTerminologies([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TerminologyPropertiesList, passing the object as the first parameter, and the string 'TerminologyPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Translate::ListTerminologiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

