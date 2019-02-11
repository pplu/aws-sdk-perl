package Test04::StubUAForMetadata;
  use Moose;

  has calls => (is => 'rw', isa => 'Int', default => 0, traits => ['Counter'],
                handles => { increment_calls => 'inc' });
  use DateTime::Format::ISO8601;

  sub get {
    my ($self, $url) = @_;

    if ($url eq 'http://169.254.169.254/latest/meta-data/iam/security-credentials/'){
      return { success => 1, content => "MyRole" };
    }

    if ($url eq 'http://169.254.169.254/latest/meta-data/iam/security-credentials/MyRole') {
      $self->increment_calls;
      if ($self->calls == 1){
        return { success => 1, content => '{"Code" : "Success","LastUpdated" : "2012-04-26T16:39:16Z","Type" : "AWS-HMAC","AccessKeyId" : "AK1","SecretAccessKey" : "SK1","Token" : "TK1","Expiration" : "' . DateTime->now->add(seconds => 241)->iso8601 .'Z"}' };
      } elsif ($self->calls == 2){
        return { success => 1, content => '{"Code" : "Success","LastUpdated" : "2012-04-26T16:39:16Z","Type" : "AWS-HMAC","AccessKeyId" : "AK2","SecretAccessKey" : "SK2","Token" : "TK2","Expiration" : "' . DateTime->now->add(seconds => 241)->iso8601 .'Z"}' };
      } elsif ($self->calls == 3){
        return { success => 1, content => 'Error in JSON' };
      } elsif ($self->calls == 4){
        return { success => 0, content => 'Error in JSON' };
      #} elsif ($self->calls == 5){
      #} elsif ($self->calls == 6){
      } else {
        die "Died on Stub call " . $self->calls;
      }
    }
    die "Unknown URL in StubUA $url";
  }
1;
